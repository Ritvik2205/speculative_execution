.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
btr si, bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or al, 25
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and al, 82
xor cx, -18
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or dl, sil
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
