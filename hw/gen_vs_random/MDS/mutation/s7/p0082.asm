.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
bts rax, rdi
test dl, sil
bt rbx, rcx
bt ebx, ecx
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
btc cx, si
btc dx, 146
xor dl, -43
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or ebx, -15
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
test bl, -14
jmp .bb_0.1
.bb_0.1:
test cl, bl
cmovp dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
test al, 22
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
xor dil, 8
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
and qword ptr [r14 + rcx], 118
or rax, 302048971
xor si, 80
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or al, dl
or dl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
