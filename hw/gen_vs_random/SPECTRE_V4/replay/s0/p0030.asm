.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 12
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
movzx rdx, cx
or al, al
sub al, 54
mov al, 90
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
imul rcx, rax
or di, 122
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
bt ax, 145
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
test eax, 1600638830
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
or dl, 71
or dl, al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
imul rdx, rdi
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
sbb dl, 75
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
test edx, ecx
adc rsi, rax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb bl, 121
mul bl
sub al, 63
movsx esi, al
xor rdi, rcx
sbb rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
adc ebx, -5
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
