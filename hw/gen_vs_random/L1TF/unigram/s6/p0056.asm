.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rbx, -39
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 98
cmovs cx, si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
sub al, al
imul edx
add bl, -40 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovnb edx, esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 51
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
jmp .bb_0.1
.bb_0.1:
or al, -57
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -63 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 61
xchg edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
