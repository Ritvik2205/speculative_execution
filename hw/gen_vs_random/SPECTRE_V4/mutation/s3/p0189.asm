.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
movzx edi, al
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovnb edi, ebx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and eax, -784085938
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
add dl, 74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
add al, -127
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl ax, bx
movsx rbx, al
cmp ebx, ecx
imul ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
xor rax, -224991767
imul edx, ecx, -116
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
test edx, ecx
adc rsi, rax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb bl, -75
mul bl
sub al, 29
movsx esi, al
xor rdi, rcx
sbb rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
dec bl
cmovl cx, cx
cmovs rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
cmovnz cx, si
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
