.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
or dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and bl, cl
imul bl
add al, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
or dl, dl
sbb dl, -71
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 74
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rax, rcx
bt di, 50
xor al, 30
cmovl ebx, edi
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and cl, al
movsx di, al
cmovnle ax, si
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
sbb cx, 29
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
sub al, al
add rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
mov rcx, rsi
add sil, 32 # instrumentation
adc rsi, 40
sub bl, bl
sub al, 55
and dl, cl
inc ebx
movzx rdi, dx
neg al
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
inc dl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
neg cl
add dx, 98
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
