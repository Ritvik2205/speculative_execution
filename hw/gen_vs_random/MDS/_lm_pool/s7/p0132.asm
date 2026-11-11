.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and al, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor cx, -18
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
xor sil, al
or sil, -49
and ax, 19224
and rsi, 16
test bl, bl
test rax, 1000448998
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
