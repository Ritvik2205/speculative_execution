.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and bl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
test al, 74
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and dl, cl
bt rcx, 137
and dl, 122 # instrumentation
cmovnbe edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
bts rbx, 80
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 63
xor bl, cl
cmovnz cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
