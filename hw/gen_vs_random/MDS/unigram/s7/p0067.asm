.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edx, edi
test bx, 4954
or bl, 43
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
cmovb rax, rbx
or dil, -41
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rcx
bt rax, 35
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 37
bts eax, ecx
cmovp dx, di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
xor dl, -19
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
test al, 22
bts rax, rsi
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
