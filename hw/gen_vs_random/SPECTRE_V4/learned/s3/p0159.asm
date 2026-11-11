.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
or cl, 12
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add dl, bl
or al, 27
or ax, -30990
jmp .bb_0.1
.bb_0.1:
cmp al, -122
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
xchg rsi, rdi
adc di, -78
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
sub al, -84
adc sil, 111
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
and al, sil
sub bl, -98
xor rdi, -72
sub al, 11
or dl, -26
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
sbb cl, 45
and dl, cl
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
or cl, 66
and bl, dil
test cl, 78
xchg dl, cl
cmp dl, cl
xor sil, al
xor dl, -66
cmp al, -116
cmovno ax, cx
sub dil, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
