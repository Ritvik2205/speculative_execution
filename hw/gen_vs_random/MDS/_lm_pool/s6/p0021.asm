.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 24
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
xor di, 93
xor cl, 55
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor al, bl
or al, bl
test bl, -9
and dl, bl
xor rdi, -9
or ax, 30524
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
