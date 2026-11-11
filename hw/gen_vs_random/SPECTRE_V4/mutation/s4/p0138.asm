.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -55
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
movzx rdx, cx
imul rdx, rdi
dec bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
sbb dl, -71
bt ax, 145
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
or dl, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
xor rdi, rcx
imul rcx, rax
mov al, -93
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
test edx, ecx
cmp bl, bl
or al, al
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
test eax, -651442446
sub al, -84
sub al, 69
sbb rdi, rax
movsx esi, al
adc rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
or di, 29
cmovnz cx, si
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
sbb bl, -79
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
mul bl
cmovl cx, cx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or dl, 71
adc ebx, -55
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
cmovs rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
