.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 6
test rdx, rax
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
cmovbe eax, esi
cmovo cx, si
cmovnb dx, ax
test rax, rbx
and eax, 366961170
btc rdx, 39
or bl, -125
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 98
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
cmovnb rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
cmovnb si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
