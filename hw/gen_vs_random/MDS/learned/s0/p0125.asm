.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and al, al
btr dx, ax
test sil, cl
or sil, dl
jmp .bb_0.1
.bb_0.1:
xor rsi, -117
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
test dl, sil
jmp .bb_0.4
.bb_0.4:
xor al, cl
and cl, -111
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and sil, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
