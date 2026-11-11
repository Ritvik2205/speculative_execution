.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, 16
cmovb ax, ax
or dx, bx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
dec rcx
xchg eax, ebx
cmovo rax, rax
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmp si, ax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 82
cmp rdi, 53
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
neg dl
cmovle ebx, edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 53
and al, dl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, ecx
sbb dil, 44
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovnp eax, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 68
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
add ecx, 67
or al, 109
xor rdx, rdi
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
test cx, si
inc rbx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
adc dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
