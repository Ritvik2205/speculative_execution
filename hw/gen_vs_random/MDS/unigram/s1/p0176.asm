.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
xor eax, -885380838
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
test cl, 73
and rsi, 92
and sil, -56
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and al, -75 # instrumentation
cmovp eax, eax
cmovnle rax, rbx
and si, -121
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
jmp .bb_0.1
.bb_0.1:
btr rbx, 93
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
bts rax, rbx
or sil, bl
bts si, ax
xor cx, -18
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
