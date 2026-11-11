.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub al, bl
sub cl, 116
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
add dl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
sub sil, -50
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, eax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
imul rax, rbx, 45
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
test bl, bl
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
bts esi, 241
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
mov bx, -31043
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc al, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
dec bl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
mul rbx
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
