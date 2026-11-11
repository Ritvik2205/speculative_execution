.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
btr ecx, 80
cmp edi, 3
or bl, -99
adc rax, rcx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
or al, al
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
cmovbe ebx, esi
cmp ecx, 95
cmovno di, cx
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and dx, -107
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 23
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
xor dil, 117
cmovno si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], dx
adc bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
and dl, 124
cmovs rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
cmovno edx, esi
cmp rax, -1070057082
btc edx, edi
adc dil, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
neg rdi
btr dx, cx
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
xor bl, dl
xor eax, 1760581269
mov al, -71
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
add cl, sil
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 77
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
or bl, -35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
