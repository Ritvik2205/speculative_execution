.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add sil, cl
add bl, dil
sub al, 96
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
or bl, -80
and dil, dil
test al, 52
sbb al, -52
xchg rax, rdx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc bl, sil
sub rax, 1914398062
sbb dl, -71
cmp sil, dl
add al, cl
test bl, 110
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
bts dx, 96
mov dl, bl
cmp al, -1
btc rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
xor bl, sil
movsx di, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
adc al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
cmp dl, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
