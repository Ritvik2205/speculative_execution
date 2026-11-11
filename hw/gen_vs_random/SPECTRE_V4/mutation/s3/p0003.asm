.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
adc rsi, rax
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
sbb rdi, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
or dl, -26
or dl, al
adc ebx, 51
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
mul bl
test eax, 1340292467
movsx esi, al
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
bt ax, 84
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
sbb dl, -71
or al, al
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
imul rdx, rdi
cmovnz cx, si
cmovl cx, cx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
movzx rdx, cx
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
dec bl
or di, 29
or cl, 12
imul rcx, rax
sbb bl, 121
cmovs rsi, rdi
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
xor rdi, rcx
sub al, 127
sub al, 11
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
test edx, ecx
mov al, 82
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
