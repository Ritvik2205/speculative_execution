.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -1465665890
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
cmovnbe rdi, rsi
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -88
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
or rsi, -119
cmovo rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
add dl, -96 # instrumentation
cmovo edi, edi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
add al, 120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
bts edx, 177
cmovbe eax, edi
xor rbx, -34
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
