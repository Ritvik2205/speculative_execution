.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
cmovle edx, esi
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
cmovl ecx, edi
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and si, -121
and dl, 17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and sil, sil
test al, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
test al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rsi, rsi
xor si, 91
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
xor ebx, 80
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and dl, 16 # instrumentation
cmovle esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
