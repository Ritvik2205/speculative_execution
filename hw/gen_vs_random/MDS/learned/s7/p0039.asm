.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 70
or al, -78
test al, dl
test sil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and sil, -9
jmp .bb_0.1
.bb_0.1:
bt ax, di
btc ax, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or ecx, 36
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
test dil, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
