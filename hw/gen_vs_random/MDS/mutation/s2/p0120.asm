.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
cmovp dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
test al, 127
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
xor dil, -124
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
not cl
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
or rax, 52
xor si, 80
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or al, dl
or dl, 51
jmp .bb_0.1
.bb_0.1:
btc edi, eax
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and edx, -44
and ax, 5001
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
