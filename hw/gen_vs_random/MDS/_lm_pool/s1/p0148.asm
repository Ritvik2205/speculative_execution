.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test al, -81
and bl, cl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or sil, bl
and al, 87
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor al, 99
btr cx, si
and cl, -111
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rax, -2039117613
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
