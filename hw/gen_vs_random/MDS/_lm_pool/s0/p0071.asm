.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and sil, 89
xor rsi, -117
xor al, -4
xor bx, 42
and cl, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and bl, sil
bt ax, cx
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
or cl, 6
xor di, -83
or ebx, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
