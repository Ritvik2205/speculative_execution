.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor si, 80
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
test bl, al
and bl, al
xor cx, -18
or bl, al
and si, -121
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test sil, al
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
xor rax, -843636050
btr cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
