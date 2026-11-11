.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test edi, -1252846009
bts rbx, rdx
and bl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and al, 75
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
test dl, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
