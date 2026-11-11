.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
test dil, -67
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and sil, 65
cmovno ax, bx
cmovbe dx, ax
and dl, -33 # instrumentation
cmovns rax, rax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
bt eax, 94
jmp .bb_0.1
.bb_0.1:
or al, dl
or ax, 28091
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 12
bt rax, rsi
or ecx, edx
and dil, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and sil, 65
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
