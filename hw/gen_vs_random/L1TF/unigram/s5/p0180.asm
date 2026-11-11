.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
xchg edx, eax
setp dl
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
lea dx, qword ptr [rdx]
bts esi, ecx
mov dx, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
add al, 112 # instrumentation
cmovnle edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cdq
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 67
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
