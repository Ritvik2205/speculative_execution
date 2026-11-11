.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 78
cmovnb di, bx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
or al, -8
or rax, 1749358813
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and cl, 127
and bl, 13
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and eax, -872608366
and si, dx
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or cl, 10
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 9
adc al, 17
test cl, 11
bts eax, 103
movzx esi, cl
not cx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 99
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sbb cl, 25
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 34
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
sbb eax, 56
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test al, -59
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
add al, 26
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovle rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
cmovb di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
