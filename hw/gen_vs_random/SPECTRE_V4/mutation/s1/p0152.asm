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
sub al, 127
mov al, 82
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
bt ax, 248
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
test eax, -31785616
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
adc al, 116
cmovz rbx, rdx
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovnle rcx, rcx
sub si, bx
inc dl
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
imul dl
add al, cl
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
xchg cx, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
bts edx, 116
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and bl, dl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmovb ebx, ecx
add bl, al
and eax, -784085938
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
