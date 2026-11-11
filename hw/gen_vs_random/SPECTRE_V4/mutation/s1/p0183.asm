.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdi, rax
mov al, 90
bt ax, 84
adc rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
cmovs rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
cmovl cx, cx
sub al, 29
imul rcx, rax
cmp bl, bl
sbb dl, 53
or dl, 71
or dl, al
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
test eax, 1947430392
or cl, 66
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
cmovnz cx, si
mul bl
dec bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
or al, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
sub al, 86
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
xor bl, bl
test edx, ecx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
xor rdi, rcx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
or di, 122
movsx esi, al
imul rdx, rdi
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
adc ebx, 66
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
movzx rdx, cx
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
sbb bl, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
