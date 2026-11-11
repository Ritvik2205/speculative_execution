.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -111
sub bl, al
xchg rdx, rdi
lea edi, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 20
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
imul si, bx
movzx edi, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
