.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 117
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
cmovno esi, edi
and bl, bl
and cx, di
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 44
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
cmovnl bx, ax
cmovnbe edx, eax
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 19
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
cmovnl rdi, rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and dl, 60 # instrumentation
cmovno ebx, ebx
and cl, 127
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
