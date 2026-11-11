.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdx
or dl, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
dec ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
inc ebx
sbb sil, 19
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
add cl, 35 # instrumentation
sets al
jmp .bb_0.2
.bb_0.2:
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and al, dl
setnz cl
cmp dl, cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
or rax, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
test edi, edx
sbb cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
