.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
cmovbe rcx, rsi
cmovns bx, cx
bt edi, 254
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test ax, 5320
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor bx, di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or dl, -18
jmp .bb_0.3
.bb_0.3:
jnl .bb_0.4
jmp .exit_0
.bb_0.4:
movsx ax, al
cmovle si, si
or al, -48
test dl, al
sub al, 77
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovbe bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
bt edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
