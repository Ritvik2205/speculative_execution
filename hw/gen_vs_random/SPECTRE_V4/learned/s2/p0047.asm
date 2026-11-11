.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1561062795
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add dil, 16
adc ecx, -12
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
sbb cl, dl
add dil, 16
and dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
cmovle rdx, rbx
add cl, -42 # instrumentation
adc al, bl
sbb cl, al
imul edx, ebx, 5
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
sbb cl, 20
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
sub rax, -701741274
xor rsi, -3
xor rsi, -3
movzx rcx, di
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
mov rbx, 9101099553822202722
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ecx, eax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
adc al, 36
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and dil, cl
xchg ecx, edx
xor sil, dl
test al, dl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmp bl, 13
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovs di, di
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
bts rdi, rdi
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
