.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, cx
or dl, cl
test dl, al
and cl, sil
cmovnb di, ax
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test rax, 1732677821
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add dl, -121 # instrumentation
cmovnp esi, eax
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
or sil, dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
add cl, al
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
