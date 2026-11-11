.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -104
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
movzx rdx, cx
or al, al
sub al, 0
mov al, 9
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
imul rcx, rax
or di, 29
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
bt ax, 84
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
sbb dl, -62
inc ebx
adc rsi, rdi
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
not cl
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
adc bl, bl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
or rdi, -41
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
adc rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
