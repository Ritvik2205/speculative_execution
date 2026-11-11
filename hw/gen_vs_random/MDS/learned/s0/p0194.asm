.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle esi, esi
test dl, -95
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 86
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor dl, 40
and dl, bl
cmovno rax, rbx
jmp .bb_0.2
.bb_0.2:
test bl, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
