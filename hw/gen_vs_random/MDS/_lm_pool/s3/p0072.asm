.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor al, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
or dl, bl
xor sil, bl
jmp .bb_0.1
.bb_0.1:
bts rax, 77
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor cl, al
xor al, sil
and dl, al
xor rax, -345061362
bt ax, cx
or ax, -11837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
