.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
sub al, 54
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
movzx rdx, cx
sbb bl, -98
cmovl cx, cx
bt ax, 84
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
cmovs rsi, rdi
adc ebx, 51
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
or di, 2
sbb rdi, rax
sub al, 86
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
sbb dl, 53
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or al, al
cmovnz cx, si
imul rdx, rdi
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
or dl, 71
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
or cl, -55
adc rsi, rax
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
mul bl
movsx esi, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
or dl, al
test eax, 1947430392
imul rcx, rax
test edx, ecx
mov al, -93
dec bl
cmp bl, bl
xor rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
