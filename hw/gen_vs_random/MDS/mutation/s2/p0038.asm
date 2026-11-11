.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -872608366
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and di, si
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
bt eax, eax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and ax, -22368
jmp .bb_0.1
.bb_0.1:
or al, -48
or ax, -4635
cmovp ax, di
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
cmovz rax, rcx
and al, 93
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and si, ax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
cmovp si, si
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
or al, al
xor rdi, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
