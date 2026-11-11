.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx, rax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
test eax, 1600638830
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
bt ax, 84
movsx esi, al
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
xor rdi, rcx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
sbb dl, -71
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
cmovl cx, cx
movzx rdx, cx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
sub al, 26
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or al, al
sbb bl, -75
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
cmovs rsi, rdi
or cl, -104
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
mul bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
test edx, ecx
dec bl
adc rsi, rax
sbb rdi, rax
mov al, 124
cmovnz cx, si
imul rdx, rdi
sub al, 55
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
or dl, -26
or dl, al
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
adc ebx, -5
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
xor bl, bl
or di, 122
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
