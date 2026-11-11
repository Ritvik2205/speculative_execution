.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 100
xor sil, dl
xor al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
add bl, 8
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
jmp .bb_0.2
.bb_0.2:
test dil, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
or al, 30
or di, 98
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
not sil
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
