.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, 104
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
lea ebx, qword ptr [rdi + rbx + 24078]
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
neg dl
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
mul rax
imul si, bx
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
btc bx, dx
mov bx, 21854
xor bl, cl
jmp .bb_0.2
.bb_0.2:
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
lea bx, qword ptr [rdx + rbx + 26600]
xchg rsi, rcx
cmovo rbx, rbx
cmovno eax, eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
adc al, -103
seto bl
cmp ax, -4865
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
adc al, al
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
