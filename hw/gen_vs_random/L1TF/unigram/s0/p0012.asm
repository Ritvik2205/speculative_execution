.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 26
and rsi, 34
sbb cl, -11
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
add cl, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 1
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
not di
inc al
and al, al
lea ecx, qword ptr [rsi + rsi + 41]
btc cx, di
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
