.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
movzx edx, cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and eax, -1237519395
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
movzx dx, dl
test bx, dx
test eax, 1340292467
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or edi, -78
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
or eax, 1001462340
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
sub ax, 25338
test bl, -29
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
bt rdi, rdi
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
bt rsi, 242
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
cmovnle rdx, rcx
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
sbb esi, eax
dec cl
cmovo si, bx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
bts edi, edx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or dl, dl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
cmovnbe ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and ecx, edi
cmp cl, cl
movsx rax, si
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
