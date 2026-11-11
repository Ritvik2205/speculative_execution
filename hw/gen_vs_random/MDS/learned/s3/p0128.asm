.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and dx, 3
or sil, dl
not bl
bts rax, 77
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or ax, -6817
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 81
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and cx, -8
xor dl, sil
or rcx, -17
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
