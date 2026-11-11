.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
cmp edi, 77
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
test rax, rsi
and al, -68
cmp al, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
cmp al, cl
test rax, 404297506
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
