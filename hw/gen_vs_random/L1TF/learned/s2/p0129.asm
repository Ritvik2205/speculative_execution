.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, 1167476476
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rdx + 53812]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rsi + rcx]
xchg dl, dil
and dil, 53
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
bts eax, edi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
