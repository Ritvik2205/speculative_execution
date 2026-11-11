.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edx, eax, 69
imul dx, si
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 24
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
cmovle edx, eax
and sil, al
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 54
cmovnbe rbx, rbx
sub edi, ebx
cmp edx, 93
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmp dl, 90
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
mov rsi, 86
sub ecx, 38
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
xor dl, 53
or eax, ebx
add ax, -13169
add bl, bl
xor cl, al
mov rdi, rax
and rdi, -2
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
mov rsi, 30
sub ecx, 22
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
xor dl, 72
not rax
mul ax
cmovb eax, ecx
adc dil, sil
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 59
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 31
add cx, cx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
adc cl, bl
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
