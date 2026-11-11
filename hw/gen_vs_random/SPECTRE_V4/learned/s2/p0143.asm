.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
test esi, 7
test ax, -5170
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc al, 69
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 44
add dil, 16
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 85
and rdi, -2
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
bt eax, eax
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
