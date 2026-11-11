.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
add al, -117 # instrumentation
not rdx
sub al, bl
lea rax, qword ptr [rdx]
add dl, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and al, cl
lea rax, qword ptr [rbx]
add dl, -125 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 119
xor sil, -33
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
test rsi, -1408527332
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
