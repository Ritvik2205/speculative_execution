.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, -48
bts rdi, 130
btr edi, ecx
xor dl, al
test bx, cx
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or bl, dl
or dil, dl
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
xor ebx, 97
cmovnbe edx, edx
not rsi
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 81
btc ax, 25
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
