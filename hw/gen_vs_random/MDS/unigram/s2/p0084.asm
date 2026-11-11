.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ecx, ebx
and dl, 102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 66
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
and dl, 107 # instrumentation
cmovs ecx, eax
cmovle dx, dx
cmovno ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or sil, -8
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
test sil, al
xor ecx, 90
or ax, 28091
and cl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
or edi, 8
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
btc dx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
