.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
adc dil, 38
xchg dl, al
test dil, -5
add al, -55
sub sil, -35
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
test al, -24
sbb dl, cl
or dil, -104
xor sil, 96
mov dl, dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmp al, -106
or al, -88
xor bl, dil
cmovnb eax, ebx
or al, -16
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
movsx di, sil
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
or ax, 48
cmp sil, 113
test eax, 1600638830
cmp al, 105
xor cl, sil
sub bl, dl
sbb cx, 29
cmovle rax, rcx
dec dl
or cl, dl
mov dil, 74
movsx di, bl
and ax, 25163
adc dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
