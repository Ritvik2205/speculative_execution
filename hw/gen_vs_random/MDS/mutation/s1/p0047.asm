.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and eax, -872608366
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and di, si
and ax, 15401
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
bt eax, eax
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, -48
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or ax, 28091
cmovp ax, di
and al, 93
cmovz rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
