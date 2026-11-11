.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
sub cl, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], -25
and dl, al
imul al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 59
cmp edx, esi
or dx, 93
and dl, dl
add cl, 46 # instrumentation
sbb rbx, 72
and rdx, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
