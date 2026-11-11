.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 88
bts cx, di
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], bx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 60
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 61
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 37
and rsi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rsi]
add bl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
add bl, -43 # instrumentation
adc cx, 25
adc al, -82
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 56
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
