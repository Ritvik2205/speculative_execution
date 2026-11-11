.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, dx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
or sil, dil
cmovp esi, ebx
and cx, dx
or bl, sil
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 10
jmp .bb_0.1
.bb_0.1:
not bx
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 72
cmovnb rsi, rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and si, bx
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
cmovnle rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
